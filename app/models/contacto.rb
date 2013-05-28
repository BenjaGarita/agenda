class Contacto < ActiveRecord::Base
  attr_accessible :Edo_Civil, :ciudad, :colonia, :domicilio, :edad, :email, :fecha_alta, :foto, :matricula, :motivo_consulta, :nombre, :sexo, :telefono
  validates_presence_of :Edo_Civil, :ciudad, :colonia, :domicilio, :edad, :email, :fecha_alta, :foto, :matricula, :motivo_consulta, :nombre, :sexo, :telefono
  validates_numericality_of :matricula
  FOTOS = File.join Rails.root, 'public', 'photo_store'

  after_save :guardar_foto



  def photo=(file_data)
    unless file_data.blank?
       @file_data = file_data
        self.extension = file_data.original_filename.split('.').last.downcase
    end

  end

  def photo_filename
    File.join FOTOS, "#{id}.#{extension}"
  end

  def photo_path
    "/photo_store/#{id}.#{extension}"
  end

  private


  def guardar_foto
    if @file_data
      FileUtils.mkdir_p FOTOS
      File.open(fhoto_filename, 'wb') do |f|
      f.write(@file_date.read)
      end
      @file_data  = nil

    end

  end

  validates_uniqueness_of :matricula
  validates_format_of :foto,
                      :with => %r{\.(gif|jpg|png|)$}i,
                      :message => 'must be a URL for GIF, JPG' +
                          'or PNG image.'
  protected
  def price_must_be_at_least_a_cent
    errors.add(:matricula, 'should be at least 3512120---' ) if matricula.nil? ||
        matricula < 3512120
  end



end
