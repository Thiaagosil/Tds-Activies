/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package calculadoraradiobox;

import javax.swing.JOptionPane;

/**
 *
 * @author Thiago54053176
 */
public class CalcRadioBox extends javax.swing.JFrame {

    /**
     * Creates new form CalcRadioBox
     */
    public CalcRadioBox() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        operador = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jvalor1 = new javax.swing.JTextField();
        jvalor2 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        subtracaobtn = new javax.swing.JRadioButton();
        somabtn = new javax.swing.JRadioButton();
        divbtn = new javax.swing.JRadioButton();
        multbtn = new javax.swing.JRadioButton();
        jLabel4 = new javax.swing.JLabel();
        jresultado = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Segoe UI Black", 1, 18)); // NOI18N
        jLabel1.setText("Valor 2");

        jLabel2.setFont(new java.awt.Font("Segoe UI Black", 1, 18)); // NOI18N
        jLabel2.setText("Valor 1");

        jLabel3.setFont(new java.awt.Font("Segoe UI Black", 1, 24)); // NOI18N
        jLabel3.setText("Calculadora");

        operador.add(subtracaobtn);
        subtracaobtn.setText("SUBTRAÇÃO");
        subtracaobtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                subtracaobtnActionPerformed(evt);
            }
        });

        operador.add(somabtn);
        somabtn.setText("SOMA");
        somabtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                somabtnActionPerformed(evt);
            }
        });

        operador.add(divbtn);
        divbtn.setText("DIVISAO");
        divbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                divbtnActionPerformed(evt);
            }
        });

        operador.add(multbtn);
        multbtn.setText("MULTIPLICAÇÃO");
        multbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                multbtnActionPerformed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Segoe UI Black", 1, 18)); // NOI18N
        jLabel4.setText("RESULTADO");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(270, 270, 270)
                        .addComponent(jLabel3))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(285, 285, 285)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(somabtn)
                            .addComponent(divbtn)
                            .addComponent(subtracaobtn)
                            .addComponent(multbtn))))
                .addGap(212, 212, 212))
            .addGroup(layout.createSequentialGroup()
                .addGap(43, 43, 43)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jLabel1)
                        .addComponent(jvalor2, javax.swing.GroupLayout.DEFAULT_SIZE, 140, Short.MAX_VALUE)
                        .addComponent(jvalor1)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 356, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jresultado, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(41, 41, 41))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(97, 97, 97))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(35, 35, 35)
                .addComponent(jLabel3)
                .addGap(52, 52, 52)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jvalor1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jresultado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(43, 43, 43)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jvalor2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 50, Short.MAX_VALUE)
                .addComponent(somabtn)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(subtracaobtn)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(multbtn)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(divbtn)
                .addGap(145, 145, 145))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void divbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_divbtnActionPerformed
        double num1 = Double.parseDouble(jvalor1.getText());
        double num2 = Double.parseDouble(jvalor2.getText());
        
        double resultado = 0;
       
        if (divbtn.isSelected()) {
            resultado = num1 / num2;
        }
         
        jresultado.setText(" " + resultado); 

    }//GEN-LAST:event_divbtnActionPerformed

    private void somabtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_somabtnActionPerformed
        // TODO add your handling code here:
        double num1 = Double.parseDouble(jvalor1.getText());
        double num2 = Double.parseDouble(jvalor2.getText());
        
        double resultado = 0;
       
        if (somabtn.isSelected()) {
            resultado = num1 + num2;
        }
         
        jresultado.setText(" " + resultado); 
    }//GEN-LAST:event_somabtnActionPerformed

    private void subtracaobtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_subtracaobtnActionPerformed
        // TODO add your handling code here:
        double num1 = Double.parseDouble(jvalor1.getText());
        double num2 = Double.parseDouble(jvalor2.getText());
        
        double resultado = 0;
       
        if (subtracaobtn.isSelected()) {
            resultado = num1 - num2;
        }
         
        jresultado.setText(" " + resultado); 
        
    }//GEN-LAST:event_subtracaobtnActionPerformed

    private void multbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_multbtnActionPerformed
        // TODO add your handling code here:
        double num1 = Double.parseDouble(jvalor1.getText());
        double num2 = Double.parseDouble(jvalor2.getText());
        
        double resultado = 0;
       
        if (multbtn.isSelected()) {
            resultado = num1 * num2;
        }
         
        jresultado.setText(" " + resultado); 
    }//GEN-LAST:event_multbtnActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(CalcRadioBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CalcRadioBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CalcRadioBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CalcRadioBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CalcRadioBox().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton divbtn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JTextField jresultado;
    private javax.swing.JTextField jvalor1;
    private javax.swing.JTextField jvalor2;
    private javax.swing.JRadioButton multbtn;
    private javax.swing.ButtonGroup operador;
    private javax.swing.JRadioButton somabtn;
    private javax.swing.JRadioButton subtracaobtn;
    // End of variables declaration//GEN-END:variables
}