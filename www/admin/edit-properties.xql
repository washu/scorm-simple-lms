<?xml version="1.0"?>

<queryset>

  <fullquery name="get_course_properties">
    <querytext>
      select o.title, sc.online, sc.default_lesson_mode
      from scorm_courses sc, acs_objects o
      where sc.scorm_course_id = :id
        and o.object_id = sc.scorm_course_id
    </querytext>
  </fullquery>

  <fullquery name="update_course_properties">
    <querytext>
      update scorm_courses
      set online = :online,
        default_lesson_mode = :default_lesson_mode
      where scorm_course_id = :id
    </querytext>
  </fullquery>

</queryset>

