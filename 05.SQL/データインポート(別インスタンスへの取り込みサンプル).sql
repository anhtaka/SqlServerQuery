
------------------------
-- ����Ȗڃ}�X�^
------------------------
-- �f�[�^�؎̂�
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[ACCOUNT] 
-- �f�[�^�C���|�[�g
INSERT INTO [R_1_1_0_FI].[dbo].[ACCOUNT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[ACCOUNT] WITH(NOLOCK)' ) AS TBL

------------------------
-- �W�v�Ȗڃ}�X�^
------------------------
-- �f�[�^�؎̂�
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[SUMMARY_ACCOUNT_LEVEL] 
-- �f�[�^�C���|�[�g
INSERT INTO [R_1_1_0_FI].[dbo].[SUMMARY_ACCOUNT_LEVEL] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[SUMMARY_ACCOUNT_LEVEL] WITH(NOLOCK)' ) AS TBL


------------------------
-- ���C�A�E�g�\���}�X�^
------------------------
-- �f�[�^�؎̂�
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT] 
-- �f�[�^�C���|�[�g
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT] WITH(NOLOCK) ' ) AS TBL

------------------------
-- ���C�A�E�g�\���}�X�^(�t�H�[��)
------------------------
-- �f�[�^�؎̂�
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_REPORT_FORM] 
-- �f�[�^�C���|�[�g
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_REPORT_FORM] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_REPORT_FORM] WITH(NOLOCK) ' ) AS TBL

------------------------
-- ���C�A�E�g�\���}�X�^(���Ӄt�H�[��)
------------------------
-- �f�[�^�؎̂�
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_LEFT] 
-- �f�[�^�C���|�[�g
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_LEFT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_LEFT] WITH(NOLOCK) ' ) AS TBL

------------------------
-- ���C�A�E�g�\���}�X�^(�E�Ӄt�H�[��)
------------------------
-- �f�[�^�؎̂�
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_RIGHT] 
-- �f�[�^�C���|�[�g
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_RIGHT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_RIGHT] WITH(NOLOCK) ' ) AS TBL

------------------------
-- ���C�A�E�g�\���}�X�^(���Z�\)
------------------------
-- �f�[�^�؎̂�
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_TRIAL_BALANCE] 
-- �f�[�^�C���|�[�g
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_TRIAL_BALANCE] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_TRIAL_BALANCE] WITH(NOLOCK) ' ) AS TBL







