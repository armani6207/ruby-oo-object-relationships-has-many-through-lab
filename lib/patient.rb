class Patient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.find_all {|x| x.patient == self}
    end

    def doctors
        appointments.collect {|x| x.doctor}.uniq
    end
end