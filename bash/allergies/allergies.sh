#!/usr/bin/env bash

main () {
  local score="$1"
  local mode=$2
  local target_allergy=$3

  local allergies_list=(
    "eggs"
    "peanuts"
    "shellfish"
    "strawberries"
    "tomatoes"
    "chocolate"
    "pollen"
    "cats"
  )
  local output=()

  for i in ${!allergies_list[@]}; do
  if (( score & (1 << i) )); then
    output+=("${allergies_list[i]}")
  fi
  done

  if [[ "$mode" == "allergic_to" ]]; then
    for allergy in "${output[@]}"; do
      if [[ "$allergy" == "$target_allergy" ]]; then
        echo "true"
        return 0
      fi
    done
    echo "false"
  elif [[ "$mode" == "list" ]]; then
    echo "${output[@]}"
  fi
}

main "$@"
