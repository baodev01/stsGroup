package sts.com.vn.mytasks.dao;

import java.io.Serializable;
import java.util.List;

public interface CRUDDao<E> {

    Serializable save(E entity);

    E getById(Serializable id);

    List<E> getAll();

    void delete(Serializable id);
}
