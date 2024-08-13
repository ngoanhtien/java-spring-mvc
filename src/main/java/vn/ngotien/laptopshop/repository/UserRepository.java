package vn.ngotien.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import vn.ngotien.laptopshop.domain.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User userSaved);

    List<User> findByEmail(String email);

    User findById(long id);

    boolean existsByEmail(String email);

    User findOneByEmail(String email);
}
