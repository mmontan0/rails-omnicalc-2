class SubtractionController < ApplicationController
  def show_sub_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first_number = params.fetch("first_num_sub").to_f
    @second_number = params.fetch("second_num_sub").to_f

    @result = @second_number-@first_number

    render({ :template => "subtraction_templates/sub_results" })
  end
end
