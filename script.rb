require "prawn"
require "prawn/table"

Prawn::Document.generate("rifa.pdf") do |pdf|
  data = [["", "Nome", "Telefone"]]

  data += (1..900).to_a.map do |i|
    [i, "", ""]
  end

  pdf.table(data, header: true, column_widths: [50, 350, 100]) do |table|
    table.cells.style(height: 27)
  end
end
