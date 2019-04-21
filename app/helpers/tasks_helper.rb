module TasksHelper
    def done(task)
        if task.status          
          image_tag("https://img.icons8.com/nolan/2x/checkmark.png", class: "my_check")     
        else
          image_tag("https://img.icons8.com/nolan/64/000000/clock.png", class: "my_check") 
        end    
    end
end
