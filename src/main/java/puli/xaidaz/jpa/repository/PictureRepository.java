package puli.xaidaz.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import puli.xaidaz.jpa.entity.Album;
import puli.xaidaz.jpa.entity.Picture;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface PictureRepository extends JpaRepository<Picture, Long> {


    @Query("SELECT picture FROM Picture picture JOIN FETCH picture.album album WHERE picture.title = (:title) and album.title = (:albumTitle)")
    Picture findByTitleAndAlbum(@Param("title") String title, @Param("albumTitle") String albumTitle);

}
