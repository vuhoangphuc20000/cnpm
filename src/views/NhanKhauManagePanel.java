package views;

import controllers.NhanKhauController;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
/**
 *
 * @author 
 */
public class NhanKhauManagePanel extends javax.swing.JPanel {

    /**
     * Creates new form NhanKhauManagePanel
     */
    private JFrame parentJFrame;
    private NhanKhauController controller;
    public NhanKhauManagePanel(JFrame parentFrame) {
        this.parentJFrame = parentFrame;
        initComponents();
        controller = new NhanKhauController(tablepn,parentFrame);
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        xemChiTietBtn = new javax.swing.JButton();
        tablepn = new javax.swing.JPanel();
        addNewBtn = new javax.swing.JButton();
        chinhSuaBtn = new javax.swing.JButton();
        khaiTuBtn = new javax.swing.JButton();
        jtfSearch = new javax.swing.JTextField();
        searchlb = new javax.swing.JLabel();

        setBackground(new java.awt.Color(255, 255, 255));

        xemChiTietBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        xemChiTietBtn.setText("Xem chi tiết");
        xemChiTietBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                xemChiTietBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout tablepnLayout = new javax.swing.GroupLayout(tablepn);
        tablepn.setLayout(tablepnLayout);
        tablepnLayout.setHorizontalGroup(
            tablepnLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 701, Short.MAX_VALUE)
        );
        tablepnLayout.setVerticalGroup(
            tablepnLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        addNewBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        addNewBtn.setText("Thêm mới");
        addNewBtn.setMaximumSize(new java.awt.Dimension(103, 25));
        addNewBtn.setMinimumSize(new java.awt.Dimension(103, 25));
        addNewBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addNewBtnActionPerformed(evt);
            }
        });

        chinhSuaBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        chinhSuaBtn.setText("Chỉnh sửa");
        chinhSuaBtn.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        chinhSuaBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                chinhSuaBtnActionPerformed(evt);
            }
        });

        khaiTuBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        khaiTuBtn.setText("Xóa");
        khaiTuBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                khaiTuBtnActionPerformed(evt);
            }
        });

        jtfSearch.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jtfSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jtfSearchActionPerformed(evt);
            }
        });
        jtfSearch.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfSearchKeyPressed(evt);
            }
        });

        searchlb.setFont(new java.awt.Font("Papyrus", 1, 24)); // NOI18N
        searchlb.setText("Search by name:");
        searchlb.setToolTipText("");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(tablepn, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(addNewBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(chinhSuaBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(xemChiTietBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(khaiTuBtn, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jtfSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(searchlb, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(searchlb, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jtfSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(addNewBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(xemChiTietBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(chinhSuaBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(khaiTuBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 223, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(tablepn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addContainerGap())))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void addNewBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_addNewBtnActionPerformed
    controller.xulyButton("Add");
    }//GEN-LAST:event_addNewBtnActionPerformed

    private void xemChiTietBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_xemChiTietBtnActionPerformed
        // hien jframe dang ky tam vang
     controller.xulyButton("Chi tiet");
    }//GEN-LAST:event_xemChiTietBtnActionPerformed

    private void chinhSuaBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_chinhSuaBtnActionPerformed
        controller.xulyButton("Chinh Sua");
    }//GEN-LAST:event_chinhSuaBtnActionPerformed

    private void khaiTuBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_khaiTuBtnActionPerformed
        controller.xulyButton("Khai Tu");
    }//GEN-LAST:event_khaiTuBtnActionPerformed

    private void jtfSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jtfSearchActionPerformed
        // TODO add your handling code here:
        
    }//GEN-LAST:event_jtfSearchActionPerformed

    private void jtfSearchKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfSearchKeyPressed
        // TODO add your handling code here:
        if (evt.getKeyCode() == 10){
            controller.setSeachbyname(jtfSearch.getText());
            controller.setViewTable();
            //JOptionPane.showMessageDialog(null, "Press enter");
        }
    }//GEN-LAST:event_jtfSearchKeyPressed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton addNewBtn;
    private javax.swing.JButton chinhSuaBtn;
    private javax.swing.JTextField jtfSearch;
    private javax.swing.JButton khaiTuBtn;
    private javax.swing.JLabel searchlb;
    private javax.swing.JPanel tablepn;
    private javax.swing.JButton xemChiTietBtn;
    // End of variables declaration//GEN-END:variables

    public void setVisibleTable() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
