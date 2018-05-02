package sts.com.vn.mytasks.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sts.com.vn.mytasks.dao.TaskDao;
import sts.com.vn.mytasks.model.Task;

import java.io.Serializable;
import java.util.List;

@Service
public class TaskServiceImp implements TaskService {

    @Autowired
    private TaskDao dao;

    @Override
    public Serializable save(Task entity) {
        return dao.save(entity);
    }

    @Override
    public Task getById(Serializable id) {
        return dao.getById((Long) id);
    }

    @Override
    public List<Task> getAll() {
        return dao.getAll();
    }

    @Override
    public void delete(Serializable id) {
        dao.delete((Long) id);
    }
}
