class TestComplex < Test::Unit::TestCase


	def test_type_check
	
		assert_raise(RuntimeError) {Complejo.new('1','1')}
	end

	def test_failure
		assert_equal("0 + 0i",(@cero + @unitario).to_s, "Suma errónea")
		assert_equal("5 + 5i",(@unitario prod_escalar(10)),"Producto escalar erróneo")
		assert_equal("-1 - 1i",(@cero - @unitario).to_s, "Resta erróena")

	end


end
