package ups.icc.eva_developers.Person.service;

import java.util.List;

import ups.icc.eva_developers.Person.dto.PersonDetailDto;
import ups.icc.eva_developers.Person.dto.PersonProjectsDto;
import ups.icc.eva_developers.Person.dto.PersonStatusDto;
import ups.icc.eva_developers.Person.dto.PersonSummaryDto;

public interface PersonService {

    List<PersonSummaryDto> findAll(Boolean activeOnly);

    PersonStatusDto toggleActive(Long id);

    PersonDetailDto findById(Long id);

    PersonProjectsDto findProjectsByPerson(Long id, Double minCost);
}
