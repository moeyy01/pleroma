# Pleroma: A lightweight social networking server
# Copyright © 2017-2022 Pleroma Authors <https://pleroma.social/>
# SPDX-License-Identifier: AGPL-3.0-only

defmodule Pleroma.Repo.Migrations.SetNotNullForInstances do
  use Ecto.Migration

  # modify/3 function will require index recreation, so using execute/1 instead

  def up do
    execute("ALTER TABLE instances
    ALTER COLUMN host SET NOT NULL")
  end

  def down do
    execute("ALTER TABLE instances
    ALTER COLUMN host DROP NOT NULL")
  end
end
