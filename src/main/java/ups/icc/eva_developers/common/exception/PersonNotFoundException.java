package ups.icc.eva_developers.common.exception;

public class PersonNotFoundException extends RuntimeException {

    public PersonNotFoundException(Long id) {
        super("Person not found");
    }
}
