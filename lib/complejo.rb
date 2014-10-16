def class complejo

	def - (n_complex)
		Complejo.new(@real-n_complex.real, @imaginaria-n_complex.imaginaria)
	end




	def * (n_complex)
		Complejo.new(@real*n_complex.real-@imaginaria*n_complex.imaginaria, @real*n_complex.imaginaria+@imaginaria*n_complex.real)

	end

	def prod_escalar (escalar)
	
		Complejo.new(escalar*@real, escalar*@imaginaria)
	end
end
