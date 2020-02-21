class Patient

  attr_reader :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, self, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end 

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
  
  def self.all 
    @@all
  end 
end