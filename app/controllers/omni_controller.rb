class OmniController < ApplicationController
  def main
    render({:template => 'omni_templates/home'})
  end
  
  def square_results
    @num = params.fetch("number").to_f
    @square = @num ** 2.to_f
    render({:template => 'omni_templates/square_results'})
  end

  def square_root_new
    render({:template => 'omni_templates/square_root_new'})
  end
  
  def square_root_results
    @num = params.fetch("user_number").to_f
    @square_root = @num ** 0.5.to_f
    render({:template => 'omni_templates/square_root_results'})
  end

  def payment_new
    render({:template => 'omni_templates/payment_new'})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_i
    @numerator = @apr / 1200 * @pv
    @denominator = 1 - (1 + @apr / 1200) ** (- 12 * @years)
    @payment = @numerator / @denominator
    render({:template => 'omni_templates/payment_results'})
  end

  def random_new
    render({:template => 'omni_templates/random_new'})
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @out = rand(@min..@max)
    render({:template => 'omni_templates/random_results'})
  end


end
