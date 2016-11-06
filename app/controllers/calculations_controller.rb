class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @user_input = params[:root].to_f
    @square_root = @user_input ** (0.5)
    @square_root = @square_root.round(2)
    render ("square_root.html.erb")
  end

  def random
    @start = params[:start].to_i
    @end = params[:end].to_i
    @random_number = rand(@start..@end)
    render ("random.html.erb")
  end

  def payment
    @rate = params[:rate].to_i
    @principal = params[:principal].to_i
    @years = params[:years].to_i

    @user_rate = @rate/100.to_f
    rate = @user_rate/100/12
    periods = @years * 12

    @payment = @principal * (rate * (1 + rate) ** periods) / ((1 + rate) ** periods - 1)
    @payment = @payment.round(2)
# @payment = 1000
    render ("payment.html.erb")
  end



end
