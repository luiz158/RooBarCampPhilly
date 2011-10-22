// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.barcamp.events.models;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.barcamp.events.models.ClassSession;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClassSession_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager ClassSession.entityManager;
    
    @Transactional
    public void ClassSession.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ClassSession.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ClassSession attached = ClassSession.findClassSession(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ClassSession.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ClassSession.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ClassSession ClassSession.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ClassSession merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ClassSession.entityManager() {
        EntityManager em = new ClassSession().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ClassSession.countClassSessions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ClassSession o", Long.class).getSingleResult();
    }
    
    public static List<ClassSession> ClassSession.findAllClassSessions() {
        return entityManager().createQuery("SELECT o FROM ClassSession o", ClassSession.class).getResultList();
    }
    
    public static ClassSession ClassSession.findClassSession(java.lang.Long id) {
        if (id == null) return null;
        return entityManager().find(ClassSession.class, id);
    }
    
    public static List<ClassSession> ClassSession.findClassSessionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ClassSession o", ClassSession.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
