package sts.com.vn.mytasks.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import sts.com.vn.mytasks.model.Task;

import java.io.Serializable;
import java.util.List;

@Repository
@Transactional
public class TaskDaoImp implements TaskDao{

    private static final Logger logger = LoggerFactory.getLogger(TaskDaoImp.class);

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public Serializable save(Task entity) {
        return getSession().save(entity);
    }

    @Override
    public Task getById(Serializable id) {
        return getSession().get(Task.class, id);
    }

    @Override
    public List<Task> getAll() {
        List<Task> taskList = getSession().createQuery("from Task where del_f='0'").list();
        return taskList;
    }

    @Override
    public void delete(Serializable id) {
        Session session = getSession();
        Task t = (Task) session.load(Task.class, id);
        if(null != t){
            session.delete(t);
        }
    }
}
