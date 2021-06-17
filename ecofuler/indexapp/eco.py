# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class BalanceDataAverage(models.Model):
    id = models.CharField(db_column='ID', primary_key=True, max_length=255)  # Field name made lowercase.
    dimen_id = models.CharField(db_column='DIMEN_ID', max_length=255)  # Field name made lowercase.
    time = models.CharField(db_column='TIME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    indus_id = models.ForeignKey("Industry",db_column='INDUS_ID',on_delete=models.CASCADE)  # Field name made lowercase.
    province = models.CharField(db_column='PROVINCE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    scale = models.CharField(db_column='SCALE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    bs_id = models.ForeignKey("BalanceIndex",db_column='BS_ID', on_delete=models.CASCADE)  # Field name made lowercase.
    unit = models.CharField(db_column='UNIT', max_length=255, blank=True, null=True)  # Field name made lowercase.
    value = models.CharField(db_column='VALUE', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'balance_data_average'
        unique_together = (('id', 'dimen_id', 'indus_id', 'bs_id'),)


class BalanceIndex(models.Model):
    bs_id = models.CharField(db_column='BS_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    bs_name = models.CharField(db_column='BS_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'balance_index'


class CashDataAverage(models.Model):
    id = models.CharField(db_column='ID', primary_key=True, max_length=255)  # Field name made lowercase.
    dimen_id = models.CharField(db_column='DIMEN_ID', max_length=255)  # Field name made lowercase.
    time = models.CharField(db_column='TIME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    indus_id = models.ForeignKey("Industry",db_column='INDUS_ID', on_delete=models.CASCADE)  # Field name made lowercase.
    province = models.CharField(db_column='PROVINCE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    scale = models.CharField(db_column='SCALE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    cf_id = models.ForeignKey("CashIndex",db_column='CF_ID', on_delete=models.CASCADE)  # Field name made lowercase.
    unit = models.CharField(db_column='UNIT', max_length=255, blank=True, null=True)  # Field name made lowercase.
    value = models.CharField(db_column='VALUE', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cash_data_average'
        unique_together = (('id', 'dimen_id', 'indus_id', 'cf_id'),)


class CashIndex(models.Model):
    cf_id = models.CharField(db_column='CF_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    cf_name = models.CharField(db_column='CF_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'cash_index'


class Datetime(models.Model):
    dimen_id = models.CharField(db_column='DIMEN_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    dimen_name = models.CharField(db_column='DIMEN_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'datetime'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class IndexappUserinfo(models.Model):
    name = models.CharField(max_length=16)
    age = models.IntegerField()
    ut = models.ForeignKey('IndexappUsertype', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'indexapp_userinfo'


class IndexappUsertype(models.Model):
    title = models.CharField(max_length=32)

    class Meta:
        managed = False
        db_table = 'indexapp_usertype'


class Industry(models.Model):
    indus_id = models.CharField(db_column='INDUS_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    indus_name = models.CharField(db_column='INDUS_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'industry'


class ProfitDataAverage(models.Model):
    id = models.CharField(db_column='ID', primary_key=True, max_length=255)  # Field name made lowercase.
    dimen_id = models.CharField(db_column='DIMEN_ID', max_length=255)  # Field name made lowercase.
    time = models.CharField(db_column='TIME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    indus_id = models.ForeignKey("Industry",db_column='INDUS_ID', on_delete=models.CASCADE)  # Field name made lowercase.
    province = models.CharField(db_column='PROVINCE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    scale = models.CharField(db_column='SCALE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    ps_id = models.ForeignKey("ProfitIndex",db_column='PS_ID', on_delete=models.CASCADE)  # Field name made lowercase.
    unit = models.CharField(db_column='UNIT', max_length=255, blank=True, null=True)  # Field name made lowercase.
    value = models.CharField(db_column='VALUE', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'profit_data_average'
        unique_together = (('id', 'dimen_id', 'indus_id', 'ps_id'),)


class ProfitIndex(models.Model):
    ps_id = models.CharField(db_column='PS_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    ps_name = models.CharField(db_column='PS_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'profit_index'


class Province(models.Model):
    dis_id = models.CharField(db_column='DIS_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    dis_name = models.CharField(db_column='DIS_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'province'


class Scale(models.Model):
    scale_id = models.CharField(db_column='SCALE_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    scale_name = models.CharField(db_column='SCALE_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'scale'


class UploadingOfBalance(models.Model):
    user_id = models.CharField(db_column='USER_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    user_time = models.CharField(db_column='USER_TIME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    bs_id = models.CharField(db_column='BS_ID', max_length=255)  # Field name made lowercase.
    bs_name = models.CharField(db_column='BS_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    values = models.CharField(db_column='VALUES', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'uploading_of_balance'
        unique_together = (('user_id', 'bs_id'),)


class UploadingOfCash(models.Model):
    user_id = models.CharField(db_column='USER_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    user_time = models.CharField(db_column='USER_TIME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    cf_id = models.CharField(db_column='CF_ID', max_length=255)  # Field name made lowercase.
    cf_name = models.CharField(db_column='CF_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    values = models.CharField(db_column='VALUES', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'uploading_of_cash'
        unique_together = (('user_id', 'cf_id'),)


class UploadingOfProfit(models.Model):
    user_id = models.CharField(db_column='USER_ID', primary_key=True, max_length=255)  # Field name made lowercase.
    user_time = models.CharField(db_column='USER_TIME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    ps_id = models.CharField(db_column='PS_ID', max_length=255)  # Field name made lowercase.
    unit = models.CharField(db_column='UNIT', max_length=255, blank=True, null=True)  # Field name made lowercase.
    ps_name = models.CharField(db_column='PS_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    values = models.CharField(db_column='VALUES', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'uploading_of_profit'
        unique_together = (('user_id', 'ps_id'),)


class UserInformation(models.Model):
    user_id = models.AutoField(db_column='USER_ID', primary_key=True)  # Field name made lowercase.
    user_name = models.CharField(db_column='USER_NAME', max_length=255)  # Field name made lowercase.
    key = models.CharField(db_column='KEY', max_length=255)  # Field name made lowercase.


    class Meta:
        managed = False
        db_table = 'user_information'
