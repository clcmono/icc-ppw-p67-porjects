package ups.icc.eva_developers.Person.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import ups.icc.eva_developers.Person.entity.PersonEntity;

public interface PersonRepository extends JpaRepository<PersonEntity, Long> {

    @EntityGraph(attributePaths = { "contactLinks", "projects" })
    List<PersonEntity> findAllByOrderByIdAsc();

    @EntityGraph(attributePaths = { "contactLinks", "projects" })
    List<PersonEntity> findByActiveOrderByIdAsc(Character active);

    @Override
    @EntityGraph(attributePaths = { "contactLinks", "projects" })
    Optional<PersonEntity> findById(Long id);
}
