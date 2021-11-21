package puli.xaidaz.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import puli.xaidaz.jpa.entity.Album;
import puli.xaidaz.jpa.entity.Dog;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface AlbumRepository extends JpaRepository<Album, Long> {

    @Query("SELECT album FROM Album album WHERE album.title=(:title)")
    Album findByTitle(@Param("title") String title);
}
