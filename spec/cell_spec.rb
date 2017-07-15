require './cell'

RSpec.describe 'Game of life' do
  context "Cell" do
    it 'Cell exists'do
      cell = Cell.new
      expect(cell).to be_truthy
    end

    it 'Cell can count neighbors' do
      cell = Cell.new
      expect(cell.count_neighbors).to be_kind_of(Integer)
    end

    it 'Cell status after creation alive' do
      cell = Cell.new
      expect(cell.status).to be_eql('alive')
    end

    it 'Cell after die died' do
      cell = Cell.new
      cell.die
      expect(cell.status).to be_eql('died')
    end

    it 'Method cell to alive' do
      cell = Cell.new
      cell.die
      cell.go_to_live
      expect(cell.status).to be_eql('alive')
    end

  end

  context "Board" do
    it 'Board exists'do
      board = Board.new
      expect(board).to be_truthy
    end

    it 'Board cells should be two deminsinal array' do
      board = Board.new(3, 4)
      expect(board.cells).to be_kind_of(Array)
      expect(board.cells.length).to be_eql(3)
    end

  end

end
