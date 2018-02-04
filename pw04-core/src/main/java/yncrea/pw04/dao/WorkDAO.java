package yncrea.pw04.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import yncrea.pw04.entity.Work;

public interface WorkDAO extends JpaRepository<Work,Long> {

}
