package puli.website.demo.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import puli.website.demo.jpa.entity.Dog;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface DogRepository extends JpaRepository<Dog, Long> {

    @Query("SELECT dog FROM Dog dog WHERE dog.name=(:name)")
    List<Dog> findByName(@Param("name") String name);

}
