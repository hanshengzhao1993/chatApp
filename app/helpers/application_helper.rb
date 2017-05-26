module ApplicationHelper
  $clicks = 0
  def increment_a
    $clicks = $clicks + 1
  end
end