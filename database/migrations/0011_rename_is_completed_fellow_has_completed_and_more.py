# Generated by Django 4.2.14 on 2024-08-03 07:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("database", "0010_remove_fellow_cohort_remove_fellow_program_and_more"),
    ]

    operations = [
        migrations.RenameField(
            model_name="fellow",
            old_name="is_completed",
            new_name="has_completed",
        ),
        migrations.RemoveField(
            model_name="fellow",
            name="user",
        ),
        migrations.AddField(
            model_name="fellow",
            name="address",
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name="fellow",
            name="cohort",
            field=models.CharField(default=2024, max_length=255),
        ),
        migrations.AddField(
            model_name="fellow",
            name="email",
            field=models.EmailField(blank=True, max_length=254, null=True, unique=True),
        ),
        migrations.AddField(
            model_name="fellow",
            name="full_name",
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name="fellow",
            name="motivation",
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name="fellow",
            name="phone_number",
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AddField(
            model_name="fellow",
            name="picture",
            field=models.ImageField(blank=True, null=True, upload_to="fellow_pictures"),
        ),
        migrations.AddField(
            model_name="fellow",
            name="program",
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name="fellow",
            name="resume",
            field=models.FileField(blank=True, null=True, upload_to="resumes"),
        ),
        migrations.AddField(
            model_name="fellow",
            name="school",
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.DeleteModel(
            name="Staff",
        ),
    ]