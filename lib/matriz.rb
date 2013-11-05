
class matriz
	attr_reader :m, :f, :c
	
	def initialize(m)
		@m=m
		@f=m.size
		@c=m[0].size
	end



	def +(other)	 
   		r =@m
   	 	for i in 0...@f do
   			for j in 0...@c do
   				r[i][j]=@m[i][j]+other.m[i][j]
   			end
   	 	end
   	 	return r
    	end

	def *(other)
   	 re =@m
   	 for i in 0...@f do
   			 for j in 0...@c do
       				 for k in 0...@f - 1 do
           				 re[i][j] += @m[i][k] * other.m[k][j]
      				  end
   			 end
   		 end   	 
   	 return re
    end
end
