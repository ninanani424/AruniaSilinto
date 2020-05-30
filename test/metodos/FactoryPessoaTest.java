/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos;

import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;


public class FactoryPessoaTest {
    
    public FactoryPessoaTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of newElement method, of class FactoryPessoa.
     */
    @Test
    public void testNewElement() {
        System.out.println("newElement");
        FactoryPessoa instance = new FactoryPessoa();
        Object expResult = null;
        Object result = instance.newElement();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of read method, of class FactoryPessoa.
     */
    @Test
    public void testRead() {
        System.out.println("read");
        Object primaryKey = null;
        FactoryPessoa instance = new FactoryPessoa();
        Object expResult = null;
        Object result = instance.read(primaryKey);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of delete method, of class FactoryPessoa.
     */
    @Test
    public void testDelete() {
        System.out.println("delete");
        Object primaryKey = null;
        FactoryPessoa instance = new FactoryPessoa();
        int expResult = 0;
        int result = instance.delete(primaryKey);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of update method, of class FactoryPessoa.
     */
    @Test
    public void testUpdate() {
        System.out.println("update");
        Object o = null;
        FactoryPessoa instance = new FactoryPessoa();
        int expResult = 0;
        int result = instance.update(o);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insert method, of class FactoryPessoa.
     */
    @Test
    public void testInsert() {
        System.out.println("insert");
        Object o = null;
        FactoryPessoa instance = new FactoryPessoa();
        Object expResult = null;
        Object result = instance.insert(o);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of selectAll method, of class FactoryPessoa.
     */
    @Test
    public void testSelectAll() {
        System.out.println("selectAll");
        FactoryPessoa instance = new FactoryPessoa();
        ArrayList<Object> expResult = null;
        ArrayList<Object> result = instance.selectAll();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of selectPessoasByNome method, of class FactoryPessoa.
     */
    @Test
    public void testSelectPessoasByNome() {
        System.out.println("selectPessoasByNome");
        String nome = "";
        FactoryPessoa instance = new FactoryPessoa();
        ArrayList<Object> expResult = null;
        ArrayList<Object> result = instance.selectPessoasByNome(nome);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of selectPessoasByPrimaryKey method, of class FactoryPessoa.
     */
    @Test
    public void testSelectPessoasByPrimaryKey() {
        System.out.println("selectPessoasByPrimaryKey");
        String primaryKey = "1";
        FactoryPessoa instance = new FactoryPessoa();
        ArrayList<Object> expResult = null;
        ArrayList<Object> result = instance.selectPessoasByPrimaryKey(primaryKey);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
