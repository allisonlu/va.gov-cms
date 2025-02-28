<?php

namespace Drupal\va_gov_consumers\Git;

use Gitonomy\Git\Commit;

/**
 * Interact with a git repo.
 */
interface GitInterface {

  /**
   * Search branches.
   *
   * @param string $search_string
   *   The search string.
   * @param int $count
   *   Number of branches to return.
   *
   * @return string[]
   *   An array of matching branch names.
   */
  public function searchBranches(string $search_string, int $count = 10) : array;

  /**
   * Get the Last commit.
   *
   * @return \Gitonomy\Git\Commit|null
   *   The commit object.
   */
  public function getLastCommit() : ?Commit;

}
