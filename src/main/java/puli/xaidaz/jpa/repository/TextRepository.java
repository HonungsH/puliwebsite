package puli.xaidaz.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.entity.Text;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Repository
@Transactional
public interface TextRepository extends JpaRepository<Text, Long> {

    @Query("SELECT text FROM Text text WHERE text.textGroup=(:textGroup)")
    List<Text> findByGroup(@Param("textGroup") String textGroup);

    default Map<String, String> findTextKeyAndTextByGroup(String textGroup) {
        List<Text> texts = findByGroup(textGroup);
        return texts.stream().collect(Collectors.toMap(Text::getTextKey, Text::getText));
    }

}
