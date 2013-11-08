require "./lib/matriz.rb"
require 'matrix'
require "./lib/Fraccion.rb"
require "./lib/gcd.rb"
describe Matriz do

	before :each do
		@m1=Matriz.new(3,3,[[1,2,3],[3,2,1],[1,2,3]])
		@m2=Matriz.new(3,3,[[3,2,1],[1,2,3],[3,2,1]])
		@m4=Matriz.new(3,3,[[4,4,4],[4,4,4],[4,4,4]])
	end

	describe "operaciones " do
		it "suma" do
			##m=@m1+@m2

			(@m1+@m2).should eq([[4,4,4],[4,4,4],[4,4,4]])
			
			
		end

		it "resta" do
			##m=@m1+@m2
			m12=Matriz.new(3,3,[[1,2,3],[3,2,1],[1,2,3]])
			m14=Matriz.new(3,3,[[3,2,1],[1,2,3],[3,2,1]])
			(m12-m14).should eq([[-2, 0, 2], [2, 0, -2], [-2, 0, 2]])
		end
		
		it "mul" do
			m10=Matriz.new(3,3,[[1,2,3],[3,2,1],[1,2,3]])
			m11=Matriz.new(3,3,[[3,2,1],[1,2,3],[3,2,1]])
		
			(m10*m11).should eq([[14, 12, 10], [14, 12, 10], [14, 12, 10]])
		end

		
=begin
		it "Suma matrices de fracciones" do
			f3 = Fraccion.new(2.00,6.00)
			f4 = Fraccion.new(3.00,2.00)
			f5 = Fraccion.new(7.00,9.00)
			f6 = Fraccion.new(1.00,1.00)
			m20=Matriz.new(2,2,[[f3,f4],[f5,f6]])
			m21=Matriz.new(2,2,[[f5,f6],[f3,f4]])	
			(m20+m21).should eq([["10/9","5/2"],["10/9","5/2"]])
		end


		it "Mul frac" do
			f3 = Fraccion.new(2.00,6.00)
			f4 = Fraccion.new(3.00,2.00)
			f5 = Fraccion.new(7.00,9.00)
			f6 = Fraccion.new(1.00,1.00)
			m20=Matriz.new(2,2,[[f3,f4],[f5,f6]])
			m21=Matriz.new(2,2,[[f5,f6],[f3,f4]])	
			(m20*m21).should eq([["10/9","5/2"],["10/9","5/2"]])
		end
=end
=begin		
		it "div" do
			m5 = Matrix[[4,5,6],[1,8,3],[2,10,6]].inverse

				m7 = Array.new
				m5.each do |m9|
					m7 << m9
				end
			m8 = Matriz.new(3,3,[[m7[0],m7[1],m7[2]],[m7[3],m7[4],m7[5]],[m7[6],m7[7],m7[8]]]) 
			#m6 = Matriz.new(3,3,m8)
			
			
			pp m8
			
			#m5=1m5.inverse
			m15=Matriz.new(3,3,[[1,2,3],[3,2,1],[1,2,3]])

			(m15/m8).should eq([[6, 42, 135], [14, 90, 285], [6, 42, 135]])
		end
=end
	end

end
