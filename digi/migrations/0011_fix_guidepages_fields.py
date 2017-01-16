# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2016-12-21 13:35
from __future__ import unicode_literals

from django.db import migrations
import wagtail.wagtailcore.blocks
import wagtail.wagtailcore.fields
import wagtail.wagtailimages.blocks


class Migration(migrations.Migration):

    dependencies = [
        ('digi', '0010_guidecontentpage'),
    ]

    operations = [
        migrations.AlterField(
            model_name='guidecontentpage',
            name='body',
            field=wagtail.wagtailcore.fields.StreamField((('heading', wagtail.wagtailcore.blocks.CharBlock(classname='full title')), ('paragraph', wagtail.wagtailcore.blocks.RichTextBlock()), ('image', wagtail.wagtailimages.blocks.ImageChooserBlock()), ('raw_content', wagtail.wagtailcore.blocks.RawHTMLBlock()))),
        ),
        migrations.AlterField(
            model_name='guidecontentpage',
            name='sidebar',
            field=wagtail.wagtailcore.fields.StreamField((('heading', wagtail.wagtailcore.blocks.CharBlock(classname='full title')), ('paragraph', wagtail.wagtailcore.blocks.RichTextBlock()), ('image', wagtail.wagtailimages.blocks.ImageChooserBlock()), ('raw_content', wagtail.wagtailcore.blocks.RawHTMLBlock()))),
        ),
    ]