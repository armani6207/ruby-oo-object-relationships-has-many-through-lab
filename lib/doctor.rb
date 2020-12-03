class Doctor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.find_all {|x| x.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.collect {|x| x.patient}
    end
end