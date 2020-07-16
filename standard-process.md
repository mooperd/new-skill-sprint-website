---
layout: page
front_page: False
front_page_order: 0
title: Python Skill Sprints - Standard Process
image: /images/pairing.png
description: Process Description
sitemap:
    priority: 0.7
    lastmod: 2017-11-02
    changefreq: weekly
---

``` python
def addSpecies(session, species_input):
    genus = Genus()
    # Try and get the Genus from the database. If error (Except) add to the database.
    try: 
        genus = session.query(Genus).filter(Genus.scientific_name == species_input["genus"]["scientific_name"]).one()
    except:
        genus = Genus()
        genus.scientific_name = species_input["genus"]["scientific_name"]
        session.add(genus)
    species = Species()
    # Add attributes
    species.scientific_name = species_input["scientific_name"]
    species.common_name = species_input["common_name"]
    # add the genus (parent) to the species (child)
    species.genus = genus
    session.add(species)
    session.commit()
```


# Python Skill Sprint - Our Standard process

Before starting the Skill Sprint participants will take part in a 45 min test to check their aptitude. 

The Skill Sprint will take approximately two weeks.

### Week 1. - Low touch guidance.  Discover blockers.
    The participants are encouraged to feel their way around a local development environment. 
    By the end of this week they should be able to install vscode, python and github desktop. 
    By the end of this week they should have a familiarity with branches and PRs.
    This week gives us the opportunity to discover organisational blockers and gauge the motivation of the participants. Testing that they have the time and energy to be properly involved.


### Week 2. - 2 hours per day face to face and 2 hours of homework which should be completed by the pair together.
    Programming primitives - Sample syllabus 
        Day one - Data Structures. Lists of dicts, iteration and boolean statements.
        Day two - CSV files. Handling larger volumes of data.
        Day three - Basic flask APIs. Functions. Methods. 
        Day four - Pandas - importing and exporting data. groupby(). apply()
        Day five - general practice. Open questions.


### Week 3.  - 2 hours per day face to face and 2 hours of homework which should be completed together.
    Delivery
        The participants will be guided through to delivery of their first value to the organisation.
        This delivery should have a small but noticeable impact on the organisation - ideally changing the job of at least one employee not participating in the Skill Sprint