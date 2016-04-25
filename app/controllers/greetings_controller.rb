class GreetingsController < ApplicationController
    def display_form
        render 'display_form'
    end
    def display_output
        @fname = params["firstname"]
        @lname = params["lastname"]
        @nname = params['number'].to_i
        
        @results = []
        10.times do |count|
            @results << "#{@nname} * #{count + 1} = #{@nname * (count + 1)}"
        end
        
        if params['mood'] == 'happy'
            @message = "That's great!"
            @color = "yellow"
        elsif params['mood'] == 'sad'
              @message = "Be happy!"
              @color = "blue"
              
        else
            @message = "Go to bed!"
            @color = "gray"
        end
        
        
        render 'display_output'
    end
  
end