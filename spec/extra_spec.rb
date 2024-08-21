# spec/extra_spec.rb

require_relative '../lib/extra'

RSpec.describe "Métodos de prueba" do
  describe "#cadena" do
    it "retorna verdadero si la palabra es un palíndromo" do
      expect(cadena("radar")).to be true 
    end

    it "retorna falso si la palabra no es un palíndromo" do
      expect(cadena("salsa")).to be false 
      expect(cadena("mundo")).to be false 
    end
  end 

  describe "#maximo" do
    it "retorna nil si el array está vacío" do
      expect(maximo([])).to be_nil
    end

    it "retorna el único número en el array" do
      expect(maximo([7])).to eq(7)
    end

    it "retorna el número máximo en el array" do
      expect(maximo([1, 2, 3, 4])).to eq(4)
      expect(maximo([10, 20, 5, 15])).to eq(20)
      expect(maximo([-5, -2, -10])).to eq(-2)
    end
  end
end
