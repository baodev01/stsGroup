package sts.com.vn.mytasks.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="tbl_tasks")
//@Where(clause = "del_f='0'")
public class Task implements Serializable {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int id;
    private String task_name;
    private int task_type;
    private Date date_event;
    private Date date_event_lunar;
    private int event_lunar;
    private String note;
    private String task_color;
    private int del_f;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTask_name() {
        return task_name;
    }

    public void setTask_name(String task_name) {
        this.task_name = task_name;
    }

    public int getTask_type() {
        return task_type;
    }

    public void setTask_type(int task_type) {
        this.task_type = task_type;
    }

    public Date getDate_event() {
        return date_event;
    }

    public void setDate_event(Date date_event) {
        this.date_event = date_event;
    }

    public Date getDate_event_lunar() {
        return date_event_lunar;
    }

    public void setDate_event_lunar(Date date_event_lunar) {
        this.date_event_lunar = date_event_lunar;
    }

    public int getEvent_lunar() {
        return event_lunar;
    }

    public void setEvent_lunar(int event_lunar) {
        this.event_lunar = event_lunar;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getTask_color() {
        return task_color;
    }

    public void setTask_color(String task_color) {
        this.task_color = task_color;
    }

    public int getDel_f() {
        return del_f;
    }

    public void setDel_f(int del_f) {
        this.del_f = del_f;
    }

    @Override
    public String toString(){
        return "";
    }
}
