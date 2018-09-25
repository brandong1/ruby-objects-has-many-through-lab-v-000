class Doctor

  attr_accessor :name, :date, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date)

  end

  def appointments # iterates through all appointments and finds those belonging to this doctor.
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients

  end
end
