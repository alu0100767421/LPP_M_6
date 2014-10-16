def class complejo

	attr_reader :real, :imaginaria

	def initialize(real, imaginaria)

		@real=real
		@imaginaria=imaginaria

	end

	def to_s
		"#{@real} + #{@imaginaria}i"
	end

#OPERACIONES DE NUMERS COMPLEJOS

	def + (n_complex)
		Complejo.new(@real+n_complex.real, @imaginaria+n_complex.imaginaria )
	end

	def / (n_complex)

	a=((@real*n_complex.real)+(@imaginaria*n_complex.imaginaria)) / (n_complex.real^2+n_complex.imaginaria^2)
	b= (((@imaginaria*n_complex.real-@real*n_complex.imaginaria) / n_complex.real^2+n_complex.imaginaria^2))
		Complejo.new(a,b)
	end



	def - (n_complex)
		Complejo.new(@real-n_complex.real, @imaginaria-n_complex.imaginaria)
	end




	def * (n_complex)
		Complejo.new(@real*n_complex.real-@imaginaria*n_complex.imaginaria, @real*n_complex.imaginaria+@imaginaria*n_complex.real)

	end

	def x (escalar)
	
		Complejo.new(escalar*@real, escalar*@imaginaria)
	end

end
