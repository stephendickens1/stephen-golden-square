def check_todo(task)
    if task.include?("#TODO")
        return true
    else
        return false
    end
end
