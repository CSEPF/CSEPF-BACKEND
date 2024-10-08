# Generated by Django 4.2.14 on 2024-08-03 22:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("database", "0011_rename_is_completed_fellow_has_completed_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="project",
            name="topics",
            field=models.ManyToManyField(
                blank=True,
                null=True,
                related_name="projects",
                to="database.policysubtopic",
            ),
        ),
        migrations.AlterField(
            model_name="testimonial",
            name="tags",
            field=models.ManyToManyField(
                blank=True,
                null=True,
                related_name="testimonials",
                to="database.policysubtopic",
            ),
        ),
    ]
