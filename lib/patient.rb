
class Patient
  attr_accessor 
  attr_reader :name
   
  @@all = []
   
      def initialize(name)
          @name = name
          @@all << self
      end
   
      def self.all
          @@all
      end
   
      def new_appointment(date, doctor)
          Appointment.new(date, self, doctor)
      end
   
      def appointments
          Appointment.all.select do |appointment|
              self == appointment.patient
          end
      end
   
      def doctors
          Appointment.all.collect do |appointment|
              self == appointment.patient
              appointment.doctor
        end
    end
end
  