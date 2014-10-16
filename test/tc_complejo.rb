require 'lib/complejo'
require 'test/unit'

class TestComplex < Test::Unit::TestCase
	def setup
		@cero= Complejo.new(0,0)
		@unitario= Complejo.new(1,1)
	end

	def tear_down
		#nothing
	end

	def text_simple
		assert_equal("0 + 0i", @cero.to_s, "Cero correcto")
		assert_equal("1 + 1i", @unitario.to_s, "Uno correcto")
		assert_equal("2 + 2i", (@unitario prod_escalar(2)).to_s)
		assert_equal("1 + 1i", (@cero + @unitario).to_s)


	end

	def test_type_check
	
		assert_raise(RuntimeError) {Complejo.new('1','1')}
	end

	def test_failure
		assert_equal("0 + 0i",(@cero + @unitario).to_s, "Suma errónea")
		assert_equal("5 + 5i",(@unitario prod_escalar(10)).to_s,"Producto escalar erróneo")
		assert_equal("-1 - 1i",(@cero - @unitario).to_s, "Resta erróena")

	end



end
