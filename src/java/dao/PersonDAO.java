/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Person;
import java.util.ArrayList;

/**
 *
 * @author GearVn
 */
public interface PersonDAO {
    public ArrayList<Person> getPersonInfo();
}
