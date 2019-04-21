module ListsHelper
    def many_tasks
        @list.tasks.length
    end
    def bar
        done=@list.tasks.where(status: true).length
        unless many_tasks==0
            done*100/many_tasks
        end
    end
end
