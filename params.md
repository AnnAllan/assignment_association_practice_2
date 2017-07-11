<!DOCTYPE html>
<html>
<body>

<form accept-charset="UTF-8" action="/posts/1" method="post">
  <input name="_method" type="hidden" value="patch" />
  <input name="utf8" type="hidden"/>
  <input name="authenticity_token" type="hidden" value="+8liMahjMiyA0WFF8ef8wzXu72+xXIKxlYzuI5UcTC4" />
  Title:<br>
  <input type="text" name="title" value="My Super Title">
  <br>
  Body:<br>
  <input type="text" name="body" value="Some Body of a post">
  <br>
  <input type="checkbox" name="tag_ids" value=" " checked>None<br>
  <input type="checkbox" name="tag_ids" value="1">1<br>
  <input type="checkbox" name="tag_ids" value="2" checked>2<br>
  <input type="checkbox" name="tag_ids" value="3" checked>3<br>
  <input type="checkbox" name="tag_ids" value="4">4<br>
  <input type="checkbox" name="tag_ids" value="5" checked>5<br>

  <input type="submit" value="Update Post">
</form>

</body>
</html>
