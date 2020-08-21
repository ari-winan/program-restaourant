/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;
public class UserPass {
    private String user, pass, panggilan;
    public UserPass(String user, String pass, String panggilan){
        this.user=user;
        this.pass=pass;
        this.panggilan=panggilan;
    }
    public String getUser(){
        return user;
    }
    public String getPass(){
        return pass;
    }
    public String getPanggilan(){
        return panggilan;
    }
}
