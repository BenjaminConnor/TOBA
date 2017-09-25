package TOBA.data;
/**
 *
 * @author Benjamin
 */
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import TOBA.user.User;

public class UserDB {
    public static void insert(User user) {
        EntityManager entMan = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction entTran = entMan.getTransaction();
        entTran.begin();        
        try {
            entMan.persist(user);
            entTran.commit();
        } catch (Exception e) {
            System.out.println(e);
            entTran.rollback();
        } finally {
            entMan.close();
        }
    }
}
