package TOBA.data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Benjamin
 */
public class DBUtil {

    private static final EntityManagerFactory entManFac =
            Persistence.createEntityManagerFactory("TOBAPU");
    
    public static EntityManagerFactory getEmFactory() {
        return entManFac;
    }
}