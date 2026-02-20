package ups.icc.eva_developers.Project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import ups.icc.eva_developers.Project.entity.ProjectsEntity;

public interface ProjectRepository extends JpaRepository<ProjectsEntity, Long> {

    List<ProjectsEntity> findByPerson_IdAndActiveOrderByCostDesc(Long personId, Character active);

    List<ProjectsEntity> findByPerson_IdAndActiveAndCostGreaterThanEqualOrderByCostDesc(
            Long personId, Character active, Double minCost);
}
