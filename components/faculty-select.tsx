"use client";

import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxGroup,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
} from "@/components/kibo-ui/combobox";

interface Faculty {
  id: number;
  name: string;
}

interface FacultySelectProps {
  faculties: Faculty[];
}

export default function FacultySelect({ faculties }: FacultySelectProps) {
  const facultyOptions = faculties.map((faculty) => ({
    value: String(faculty.id),
    label: `${faculty.name} (E${faculty.id})`,
  }));

  return (
    <div className="flex flex-col gap-2">
      <label className="text-sm font-medium text-zinc-700 dark:text-zinc-300">
        Requesting Faculty
      </label>
      <Combobox data={facultyOptions} type="faculty">
        <ComboboxTrigger className="w-72" />
        <ComboboxContent>
          <ComboboxInput />
          <ComboboxEmpty />
          <ComboboxList>
            <ComboboxGroup>
              {facultyOptions.map((faculty) => (
                <ComboboxItem key={faculty.value} value={faculty.value}>
                  {faculty.label}
                </ComboboxItem>
              ))}
            </ComboboxGroup>
          </ComboboxList>
        </ComboboxContent>
      </Combobox>
    </div>
  );
}
