public class Pessoa {
        private String nome;
        private int idade;
        private String endereco;
        private String telefone;
        private String email;
        private String cpf;
        private String genero;
        private String estadoCivil;
        private String profissao;
        private String salario;
        private String nacionalidade;
        private String filhos;
    
    
    
     // Getters e Setters
        public String getNome(){
            return nome;
        }
    
        public int getIdade(){
            return idade;
        }
    
        public String getEndereco(){
            return endereco;
        }
    
        public String getTelefone(){
            return telefone;
        }
    
        public String getEmail(){
            return email;
        }
    
    
        public String getCpf(){
            return cpf;
        }
    
        public String getGenero(){
            return genero;
        }
    
    
        public String getEstadoCivil(){
            return estadoCivil;
        }
    
        public String getProfissao(){
            return profissao;
        }
    
        public String getSalario(){
            return salario;
        }
    
        public String getNacionalidade(){
            return nacionalidade;
        }
    
        public String getFilhos(){
            return filhos;
        }
    
        //setter
    
        public void setNome(String nome){
            if (nome == null){
                this.nome = "Inválido"; 
            }
            else{      
                this.nome = nome;
            }
        }
    
        public void setIdade(int idade){
            if (idade >= 1) {
             this.idade = idade;
            } else {
                System.out.println("Número inválido, tente uma idade com o número positivo.");
            }
        }
    
        public void setEndereco(String endereco){
           if (endereco == null || endereco.trim().isEmpty()){ 
            this.endereco = "inválido. Digite um endereço válido";
           }
            else{
                this.endereco = endereco;
            }
        }
    
        public void setTelefone(String telefone) {
            if (telefone != null && telefone.matches("\\d{10}")) {
                this.telefone = telefone;
            } else {
                this.telefone = "Número Inválido";
            }
        
        }
         
    
        public void setEmail(String email){
            if (email.contains("@") && email.contains(".com")){
                this.email = email;
            }
            else {
                this.email = "E-mail inválido, utilize um e-mail com @";
            }
        }
        public void setCpf(String cpf) {
            if (cpf != null) {
                if (cpf.matches("\\d{11}")) {
                    this.cpf = cpf;
                } else {
                    this.cpf = "Inválido";
                    System.err.println("CPF inválido");
                }
            } else {
                this.cpf = "Inválido";
                System.out.println("CPF não pode ser nulo");
            }
        
        }
    
         public void setGenero(String genero){
            if (genero.equalsIgnoreCase("masculino") || genero.equalsIgnoreCase("feminino") || genero.equalsIgnoreCase("outro")){
                this.genero = genero;
            }
            else {
               this.genero = ("Gênero inválido, utilize 'Masculino', 'Feminino' ou 'Outro'.");
            }
        }
    
        public void setEstadoCivil(String estadoCivil){
           
            if(estadoCivil.equalsIgnoreCase("Solteiro") 
            || estadoCivil.equalsIgnoreCase("Casado")|| 
                estadoCivil.equalsIgnoreCase("Divorciado") || 
                estadoCivil.equalsIgnoreCase("viuvo")){
            this.estadoCivil = estadoCivil;   
            } 
            else {
                this.estadoCivil = "Inválido, digite Solteiro, Casado, divorciado ou viuvo.";
        }
       
    }
    
        public void setProfissao(String profissao){
            if (profissao == null || profissao.trim().isEmpty()){        
                this.profissao = "A profissão do " + nome + " é sem informação. Tente novameente.";
            }
            else{
               this.profissao = profissao;
            }    
    }
    
        public void setSalario(String salario){
            this.salario = salario;
            if (salario == null || salario.trim().isEmpty()) {
                this.salario = "Salário inválido, não pode ser negativo.";
                }
             else {
                this.salario = salario;
            }
        }
    
        public void setNacionalidade(String nacionalidade){
           if (nacionalidade.isEmpty()){
                this.nacionalidade = "Nula! Digite uma nacionalidade válida.";
           }else { 
            this.nacionalidade = nacionalidade;
            }
        }
    
        public void setFilhos(String filhos){
           if (filhos == null || filhos.trim().isEmpty()){
            this.filhos = ("Erro! Digite a quantidade válida de filhos");
           } 
           else{
            this.filhos = filhos;
           }
            
        }
    
            public void atualizarEndereco(String novoEndereco) {
                this.endereco = novoEndereco;
                System.out.println("O endereço do " + nome + " foi atualizado para " + novoEndereco);
            }
        
        public static void main(String[]args){
            Pessoa pessoa1 = new Pessoa();
            
            pessoa1.setCpf("10310310312");
            pessoa1.setNacionalidade("Brasileira");
            pessoa1.setGenero("Masculino");
            pessoa1.setSalario("4400");
            pessoa1.setNome("Thiago");
            pessoa1.setIdade(19);
            pessoa1.setEndereco("Riacho Fundo 1");
            pessoa1.setTelefone("6192541365");
            pessoa1.setEmail("205thiagosilva@gmail.com");
            pessoa1.setProfissao("Ti");
            pessoa1.setFilhos("Nenhum");
            pessoa1.setEstadoCivil("Solteiro");
            

            
            System.out.println("------------------------------------------");
            
            
            
            
            System.out.println("Nome da pessoa é : " + pessoa1.getNome() );
            System.out.println("A idade do " + pessoa1.getNome() + " é " + pessoa1.getIdade() + "Anos");
            System.out.println("Endereço: " + pessoa1.getEndereco());
            System.out.println("Telefone: " + pessoa1.getTelefone());
            System.out.println("O email do " + pessoa1.getNome() + " é " + pessoa1.getEmail());
            System.out.println("CPF do " + pessoa1.getNome() +" é "+ pessoa1.getCpf());
            System.out.println("O gênero do " + pessoa1.getNome() + " é : " + pessoa1.getGenero());
            System.out.println("O estado civil do " + pessoa1.getNome() + " é " + pessoa1.getEstadoCivil());
            System.out.println("A profissão do "+ pessoa1.getNome() + " é : " + pessoa1.getProfissao());
            System.out.println("O salário do " + pessoa1.getNome() + " é R$ " + pessoa1.getSalario() + " Reais.");
            System.out.println("Nacionalidade: " + pessoa1.getNacionalidade());
            System.out.println("Filhos: " + pessoa1.getFilhos());
            
            System.out.println("------------------------------------------");
      
            pessoa1.atualizarEndereco("Riacho fundo 2"); 
            
        }    
    
 }
