package dto;

public class Task {
    private int id;
    private String userEmail;
    private String task;
    private String status;

    public Task() {}

    public Task(int id, String userEmail, String task, String status) {
        this.id = id;
        this.userEmail = userEmail;
        this.task = task;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public String getTask() {
        return task;
    }

    public String getStatus() {
        return status;
    }
}

