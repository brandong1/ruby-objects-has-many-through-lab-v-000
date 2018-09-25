class Doctor::Appointment

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments # iterates through all appointments and finds those belonging to this doctor.
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients

  end
end
